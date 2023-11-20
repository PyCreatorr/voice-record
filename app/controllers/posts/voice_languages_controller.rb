class Posts::VoiceLanguagesController < ApplicationController
    # before_action :authenticate_user!, except: [:index, :show]
    before_action :set_post, only: [:update]

    def update
        #binding.irb

        # @target = params[:target]
        # @states = CS.get(params[:country]).invert
        # @post.update(voice_language: params[:voice_language])

        respond_to do |format|
          if @post.update(voice_language: params[:voice_language])

            # format.turbo_stream { render turbo_stream: turbo_stream.remove(dom_id(@scan, :uploaded_image))}
            # format.html {redirect_to edit_scan_path(@scan) }

            format.turbo_stream { render "posts/voice_record", 
                
                locals: {post: @post }
            }
            # format.html { redirect_to post_url(@post), notice: "post was successfully updated." }
          # else

          end
        end
    end

    private

    def set_post
        # @post = post.find(params[:post_id]) if user_signed_in? 
        @post = Post.find(params[:post_id])
    end

    def post_params 
        params.require(:post).permit(:title, :post_content, :voice_language)
    end
end