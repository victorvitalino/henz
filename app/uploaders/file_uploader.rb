# encoding: utf-8

class FileUploader < CarrierWave::Uploader::Base

  storage :file

	def extension_white_list
	  %w(pdf doc docx)
	end

	def filename
	  if original_filename
	    @name ||= Digest::MD5.hexdigest(File.dirname(current_path))
	    "#{@name}.#{file.extension}"
	  end
	end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

end
