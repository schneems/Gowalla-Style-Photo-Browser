module PhotosHelper
  
  
  def build_hash_fragment(options = {})    
    url =  photos_url(:id => options[:photo])
    return URI.parse(url).query
  end
  
  
  def nav_photo(options = {})
       link_to(
         image_tag(
           options[:photo].image.url,
           {
     		    :height => '50', :width => '50',
     		    :class => "thumb #{options[:class]}"
           }
   		  ),
   		  photo_path(options[:photo]),
   		  {
     		  :class => 'picture_link',
     		  # We'll use JavaScript to make this the actual HREF. This ensures
     		  # the photo browser still works when JS is disabled.
     		  :'data-href' => build_hash_fragment(:photo => options[:photo])
   		  }
   		)

   end

   def photo_placeholder
     raw("<a href='#' class='default thumb' onclick='return false;'>
 		<img src='/images/photo-default.png' width='50' height='50' />
 		</a>")
   end
   
   

end
