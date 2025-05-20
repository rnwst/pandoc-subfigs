local function has_value(tab, val)
   for _, v in ipairs(tab) do
      if v == val then return true end
   end
   return false
end

local function first_para_idx(blocks)
   for index, block in ipairs(blocks) do
      if block.tag == 'Para' then return index end
   end
end

function Div(elt)
   local caption_idx = first_para_idx(elt.content)
   if has_value(elt.classes, 'subfigs') and caption_idx then
      local caption = pandoc.Plain(table.remove(elt.content, caption_idx).content)
      return pandoc.Figure(elt.content, { long = caption }, elt.attr)
   end
end
