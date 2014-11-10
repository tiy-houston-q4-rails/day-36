Day 36
=====

Review Modalification

Assignment: Complete lab



Remotify'ing a Form
===

<p>To remotify a form:</p><p><br data-mce-bogus="1"></p><ol><li>add `remote: true`</li><li>remove redirection/render from controller action</li><li>add action.js.erb to views/controller and add `alert(‘sup’);`</li><li>press submit, make sure you see “sup"</li><li>```&lt;% if @link.errors.any? %&gt;<br> $("#new_link").html("BOOO");<br>&lt;% else %&gt;<br> alert('sup');<br>&lt;% end %&gt;```<br></li><li>Ensure the “new_link” matches the form id of the form.</li><li>press submit, make sure html of form id is replaced with “BOOO"</li><li>Move the form to a partial</li><li>replace old form with `&lt;%= render partial: "links/form" %&gt;` … Use “links/form” method when you are rendering in the layout (as opposed to the action only)</li><li>Change the boo to `&lt;%= j&nbsp;render partial: "links/form” %&gt;` … the same thing as 9, but with a “j"</li><li>Confirm your baddassness.&nbsp;Now, let’s handle the Positive case</li><li>Extract the main iterator/links to a partial. Change the view to `&lt;%= render partial: "links" %&gt;`<br></li><li>Confirm works</li><li>Create a wrapper around the new partial, so we can replace it later ```&lt;div id="links"&gt;<br> &lt;%= render partial: "links" %&gt;<br>&lt;/div&gt;```<br></li><li>Add into the else in the js: ``` $("#links").html("&lt;%=j render partial: "links" %&gt;”);```<br></li><li>Add into the controller to re-fetch the list of items (now including the newly created/updated item) ```  def create<br> @link = Link.new(params.require(:link).permit(:url))<br> if @link.save<br>&nbsp; @links = Link.all<br>&nbsp; @link = Link.new<br> end<br>end```<br data-mce-bogus="1"></li><li><br></li></ol><p><br data-mce-bogus="1"></p><p><br data-mce-bogus="1"></p>


Modalifying stuff
=====


<html><head><meta charset="utf-8" /></head> <body><p>Modalify
something</p><p><br data-mce-bogus="1"></p><ol><li>get bootstrap up and running
(both scss and js)</li><li>Refer
to&nbsp;http://getbootstrap.com/javascript/#modals for syntax</li><li>Add
open-modal link to a url <pre><span>data-toggle=</span><span>"modal"</span>
<span>data-target=</span><span>"#myModal”</pre></span></li><li><span>Add the modal
to your html</span></li><li><span>Open the modal: (it should have nothing
special inside the modal yet)</span><ol><ol><li><span>"data-toggle"=&gt;"modal",
"data-target"=&gt;"#myModal"</span></li><li><span>data: { toggle: "modal",
target: "#myModal" }</span></li></ol></ol></li><li>Move your form inside the
content area of the modal</li><li>Remove modal-footer and rename
modal-title</li><li>IF YOU want to close the modal:<ol><ol><li>find the modal’s
ID</li><li>```$(“#modalid”).modal(“hide”);```</li></ol></ol></li></ol><p>If not
using Bootstraps’ javascript modal component, you would change 3, 5, and 8 to
match that component’s API.</p><p><br data-mce-bogus="1"></p><p>If using
bourbon’s refill modal, to hide a modal ```$(".modal-window").hide()```. Open
it: ```$(".modal-window”).show()```</p> </body></html>
