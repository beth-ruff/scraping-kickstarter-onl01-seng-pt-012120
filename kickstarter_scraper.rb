require 'nokogiri'
require 'pry'

def create_project_hash
  
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  binding.pry
  # projects: kickstarter.css("li.project.grid_4")
  # title: project.css("h2.bbcard_name strong a").text
  # image link: project.css("div.project-thumbnail a img").attribute("src").value
  # description: project.css("p.bbcard_blurb").text

end

create_project_hash

#<ul class="project-meta">
<li>
<a data-location="{&quot;id&quot;:12589335,&quot;name&quot;:&quot;Brooklyn&quot;,&quot;slug&quot;:&quot;brooklyn-ny&quot;,&quot;short_name&quot;:&quot;Brooklyn, NY&quot;,&quot;displayable_name&quot;:&quot;Brooklyn, NY&quot;,&quot;country&quot;:&quot;US&quot;,&quot;state&quot;:&quot;NY&quot;,&quot;urls&quot;:{&quot;web&quot;:{&quot;discover&quot;:&quot;https://www.kickstarter.com/discover/places/brooklyn-ny&quot;,&quot;location&quot;:&quot;https://www.kickstarter.com/locations/brooklyn-ny&quot;},&quot;api&quot;:{&quot;nearby_projects&quot;:&quot;https://api.kickstarter.com/v1/discover?signature=1392163530.44f66778a1b13738446d3c5f42fcdc20e0ff0b3d&amp;woe_id=12589335&quot;}}}" href="/discover/places/brooklyn-ny?ref=city" target="">
<span class="ss-icon ss-location"></span>
<span class="location-name">Brooklyn, NY</span>
</a>
</li>
</ul>