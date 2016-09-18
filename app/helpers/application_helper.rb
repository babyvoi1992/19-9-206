require 'redcarpet/compat'
module ApplicationHelper
  def markdown(content)
    render = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html:true)
    options = {
        autolink: true,
        no_intra_emphasis: true,
        disable_indented_code_blocks: true,
        fenced_code_blocks: true,
        lax_html_blocks: true,
        strikethrough: true,
        superscript:true
    }

    mark = Redcarpet::Markdown.new(render, options)

    mark.render(content).html_safe
  end
end
