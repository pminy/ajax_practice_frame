class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
        #댓글에 대한 내용 하나만 들어감 
      
      t.string :content #댓글의 내용
      
      t.integer :post_id # 중요한 것
      
      #어떤 게시판에대한 댓글인지 data가지고 있어야 하기 때문에
      
      #이름에대한 형식이 있음 
      #형태는 반드시 숫자 integer이여애 되고
      #게시판 model만들때 
      #이름 rails g model post 라고 명령어를 쳤기 때문에 
      # post 뒤에  _(under bar) id 라고 적어줘야됨
      #저장할 대상 post_id라고 꼭 적어줘야됨
      #
      #rails 에서 지켜야될 약속임
      #
      
      #정수 숫자    ㄴ 1:N관계
                # 게시판글 하나에 댓글이 여러개 달릴수 있음
                # 댓글 하나하나는 어떤 게시글에대한 글인지 data를 
                # 저장하고 있어야됨 (항상)

      t.timestamps null: false
    end
  end
end
