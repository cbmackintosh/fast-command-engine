class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :body, :incident_id
end
