class Email < ApplicationRecord
  def attachment=(uploaded_io)
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
    write_attribute(:attachment, uploaded_io.original_filename)
  end
  def attachment
    read_attribute(:attachment)
  end
  has_many :carboncopies
  has_many :ccemployees, through: :carboncopies, source: :employee
  has_many :blindcarboncopies
  has_many :bccemployees, :through => :blindcarboncopies, source: :employee

end
