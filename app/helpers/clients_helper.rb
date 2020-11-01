module ClientsHelper
    def gravatar_for(client)
    gravatar_id = Digest::MD5::hexdigest(client.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: client.name, class: "gravatar")
  end
end
