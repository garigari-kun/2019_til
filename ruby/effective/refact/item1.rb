send_mail_to(user) if user.active?

user.destroy unless user.active?

user.admin? "Hey admin" : "Normal!"

def build_user
  User.new.tap do |user|
    user.email = 'hoge@hoge.hoge'
    user.name = 'Keisuke Tsukamoto'
  end
end

actions = %w(index, new create)

# if nil, initialize it
def twitter_client
  @twitter_client ||= Twitter::Rest::Client.new
end

def process_user(user)
  send_mail_to
rescue
  # execption
end
