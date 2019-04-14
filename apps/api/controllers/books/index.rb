module Api
  module Controllers
    module Books
      class Index
        include Api::Action
        accept :json

        expose :books

        def call(params)
          @books = BookRepository.new.all
        end
      end
    end
  end
end
