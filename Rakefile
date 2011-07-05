require 'bundler/gem_tasks'

desc "create the git hug command alias"
task :githug do
  
  `git config --global alias.hug '!githug'`
  
  def interface
    puts purple("\n=======================================\n=============== githug ================\n=======================================\n")
    puts "Install githug command line utility? (y/n)\n\n"
    response = $stdin.gets.chomp
    if response == "y"
      git_path = `which git`.chomp
      githug_path = `which githug`.chomp
      githug_symlink = git_path.gsub(/git/, 'githug').chomp
      begin
        puts "\n"
        sh %{sudo cp #{githug_path} #{githug_symlink} > /dev/null 2>&1\n}
        puts purple("\nSuccessfully installed githug command.")
      rescue Exception
        overwrite
      end
    elsif response == "n"
      puts red("\nDidn't install anything.")
    else
      interface
    end
  end
  
  def overwrite
    puts red("Overwrite existing command? (y/n)\n\n")
    response = $stdin.gets.chomp
    if response == "y"
      git_path = `which git`.chomp
      githug_path = `which githug`.chomp
      githug_symlink = git_path.gsub(/git/, 'githug').chomp
      puts "\n"
      sh %{sudo cp -fi #{githug_path} #{githug_symlink} > /dev/null 2>&1\n}
      puts purple("\nSuccessfully installed githug command.")
    elsif response == "n"
      puts red("\nDidn't install anything.")
    else
      overwrite
    end          
  end

  def red(text)
    "\e[31m#{text}\e[0m"
  end
  
  def purple(text)
    "\e[35m\e[1m#{text}\e[0m\e[0m"
  end
  
  interface
end