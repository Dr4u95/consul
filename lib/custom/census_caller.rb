class CensusCaller

  def call(document_type, document_number)
    LocalCensus.new.call(document_type, document_number)
  end
end

