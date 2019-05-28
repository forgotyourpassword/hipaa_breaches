## @knitr map_entity_name

# change covered entity names to a common name
for (row in 1:NROW(entity_name_map)) {
  from <- entity_name_map[row,1]
  to <- entity_name_map[row,2]
  breaches$Name.of.Covered.Entity <- str_replace_all(breaches$Name.of.Covered.Entity,from,to)
}