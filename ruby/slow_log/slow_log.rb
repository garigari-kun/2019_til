# ActiveSuppert:Notifications module
#
ActiveSupport::Notifications.subscribe('sql.active_record') do |name, start, finish, id, payload|
  duration = finish.to_f - start.to_f
  if duration >= 3.0
    SomeLogger.log("slow query detected: #{payload[:sql]}, duration: #{duration}")
  end
end

# SlowQueryLogger config/initializer/slow_query_logger.rb
class SlowQueryLogger
  MAX_DURATION = 3.0

  def self.initialize!
    ActiveSupport::Notifications.subscribe('sql.active_record') do |name, start, finish, id, payload|
      duration = finish.to_f - start.to_f
      if duration >= 3.0
        SomeLogger.log("slow query detected: #{payload[:sql]}, duration: #{duration}")
      end
    end
  end
end

SloqQueryLogger.initialize!

# Use NewRelic for scaling an application avg call, time,,,etc
#
# bullet gem will be logged in the log/bullet.log when you have N+1 query in your rails app so check that out.
#
# 
