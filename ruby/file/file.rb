Dir.chdir("files")

30.times do |n|
	n+=1
	File.open(n.to_s + ".txt", "w") do |file|
		file.write(n.to_s + "번째 내용입니다.")
		file.write("멋쟁이사자처럼")
	end
end
