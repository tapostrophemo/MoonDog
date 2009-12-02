Given /^I have the following (.+)$/ do |model_str, table|
  model_sym = get_model_symbol(model_str)
  klass = get_class(model_sym)
  klass.transaction do
    klass.destroy_all
    table.hashes.each do |hash|
      attributes = {}
      hash.each { |k, v| attributes[k.gsub(' ','').underscore] = v }  
      Factory(model_sym, attributes)
    end
  end
end

private
def get_class(model_symbol)
  eval(model_symbol.to_s.camelize)
end

def get_model_symbol(model_str)
  model_str = model_str.gsub(/\s/, '_').singularize  
  model_str.to_sym
end
