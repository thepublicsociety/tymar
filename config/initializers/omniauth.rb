Rails.application.config.middleware.use OmniAuth::Builder do  
  provider :twitter, 'VmUFzBCk13ivJADuDKLeSA', '6qitbysxpmXzWlRE9qsmFuIGOiZu8H5UnEvusUbw'
  provider :facebook, "115731095161187", "4e65bf43814cc2a2c836dc6a38bbdd22", {
    :scope => 'read_stream, publish_stream', :display => 'page'
  }
end