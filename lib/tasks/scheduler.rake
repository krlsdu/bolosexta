require 'net/http'
desc "This task is called by the Heroku scheduler add-on"
task :send_sms => :environment do
    if Date.today.thursday?
        # url = URI.parse('https://bolosexta.herokuapp.com/messages/reply')
        url = URI.parse('http://localhost:5000/messages/reply')
        req = Net::HTTP::Get.new(url.to_s)
        res = Net::HTTP.start(url.host, url.port) {|http|
            http.request(req)
        }
    end
end

