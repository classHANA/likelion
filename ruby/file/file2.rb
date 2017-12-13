# 폴더는 files
# 파일 30개를 만들어 주세요
# 파일 제목은 1.txt 2.txt
# 파일 내용에 좋은 아침입니다. 

Dir.chdir("files")

30.times do |file|
	file+=1
	File.open(file.to_s + ".txt", "a+") do |text|
		text.write("좋은 아침입니다.")
	end
end


