class Post < ActiveRecord::Base
    validates :content, presence: { message: "내용을 입력해주세요!" }
end
