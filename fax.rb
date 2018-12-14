require 'json'
require 'srfax'
require 'base64'
require 'aws-sdk-s3'

def get(event:, context:)
  SrFax.setup do |config|
    config.defaults[:access_id] = ENV['SRFAX_ACCESS_ID']
    config.defaults[:access_pwd] = ENV['SRFAX_ACCESS_PWD']
  end

  # Retrieve any faxes in the inbox
  inbox = SrFax.view_inbox "UNREAD"
  if inbox[:Status].upcase == 'SUCCESS'
    s3 = Aws::S3::Resource.new(region: 'ca-central-1')

    faxes = inbox[:Result]
    faxes.each do |fax|
      if fax[:ReceiveStatus].upcase == 'OK'
        pdf = SrFax.get_fax(fax[:FileName], 'IN')
        if pdf[:Status].upcase == 'SUCCESS'
          # Save the Retrieved Fax (base64 encoded) PDF document to our incoming documents S3 bucket path.
          obj_key = "fax/#{fax[:EpochTime]}/#{fax[:FileName].split('|').first}-from-#{fax[:RemoteID]}-#{fax[:CallerID]}-pages-#{fax[:Pages]}.pdf"
          
          obj = s3.bucket(ENV['INCOMING_FAX_BUCKET']).object(obj_key)
          obj.put(body: Base64.decode64(pdf[:Result]), content_type: 'application/pdf')
          p "Fax uploaded to s3://#{ENV['INCOMING_FAX_BUCKET']}/#{obj_key}"
          # SrFax.update_fax_status(descriptor, direction) , {:sMarkasViewed => 'Y'}
        end
      else
        p "ERROR: Problem with fax: #{fax.inspect}"
      end  
    end
  else
    p "ERROR: Failed to view inbox: #{inbox[:Result]}"
  end
rescue StandardError => e
  p e.message
  p e.backtrace
end