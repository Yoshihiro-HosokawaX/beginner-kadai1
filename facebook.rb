
def facebook
    100.times do |num|
        # 1〜100を表示するために+1

        n = num+1
        if (n) % 15 == 0
            puts 'FaceBook'
        elsif (n) % 3 == 0
            puts 'Face'
        elsif (n) % 5 == 0
            puts 'Book'
        else
            puts n
        end
    end
end

#facebookメソッドの実行
facebook