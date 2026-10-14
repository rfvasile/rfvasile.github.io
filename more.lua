function Span(el)
  if el.classes:includes('more') then
    local inlines = el.content:clone()
    inlines:insert(1, pandoc.RawInline('html',
      '<details class="links-toggle"><summary></summary><span class="links">'))
    inlines:insert(pandoc.RawInline('html', '</span></details>'))
    return inlines
  end
end
