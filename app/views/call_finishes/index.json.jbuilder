json.array!(@call_finishes) do |call_finish|
  json.extract! call_finish, :id, :id_call, :id_user, :observation, :active
  json.url call_finish_url(call_finish, format: :json)
end
