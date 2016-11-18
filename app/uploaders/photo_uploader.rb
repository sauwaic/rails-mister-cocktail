# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

      process eager: true  # Force version generation at upload time.

      process convert: 'jpg'

      version :circle_show do
        cloudinary_transformation width: 300, height: 300, crop: :fill
      end
    end
