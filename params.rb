# Params
class Params
  attr_accessor :client_id
  attr_accessor :secret
  attr_accessor :bucket
  attr_accessor :region
  attr_accessor :object
  attr_accessor :filename

  def initialize
    @client_id = ENV['client_id']
    @secret = ENV['secret']
    @bucket = ENV['bucket']
    @region = ENV['region']
    @filename = ENV['filename']
  end

  def print
    Log.info('Params:')
    Log.print("client_id: #{Log.secure_value(@client_id)}")
    Log.print("secret: #{Log.secure_value(@secret)}")
    Log.print("bucket: #{@bucket}")
    Log.print("region: #{@region}")
    Log.print("object: #{@object}")
    Log.print("filename: #{@filename}")
  end

  def validate
    raise 'missing: client_id' if @client_id.to_s.empty?
    raise 'missing: secret' if @secret.to_s.empty?
    raise 'missing: bucket' if @bucket.to_s.empty?
    raise 'missing: region' if @region.to_s.empty?
    raise 'missing: object' if @object.to_s.empty?
    raise 'missing: filename' if @filename.to_s.empty?
  end
end
