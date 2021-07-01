if Rails.env === 'production' 
  Rails.application.config.session_store :cookie_store, key: '_fast-command', domain: 'https://quick-command.herokuapp.com/'
else
  Rails.application.config.session_store :cookie_store, key: '_fast-command' 
end