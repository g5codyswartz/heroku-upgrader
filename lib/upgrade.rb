Dir[File.join(Dir.pwd) + "**/*.rb"].each { |file| require file if !file.include?("upgrade.rb") }
include App

def main_menu
  system("clear")
  status=""; choice = ""
  until choice == "x"
    puts "[= Heroku Database Upgrader =]".blue.bold
    status != "" ? puts("Status: ".magenta + "#{status}"+ "\n\n")  : false
    puts "(1) Enter App Name "
    puts "(2) App PG Info"
    puts "(x) Exit "
    print "Enter choice: "
    choice = gets.chomp.to_s
    case choice
    when "1"
      get_app_name
      status = "Getting App Name #{@app_name}"
    else
      status = "Invalid Option"
    end
  end
  puts "Closing program"
end


main_menu
