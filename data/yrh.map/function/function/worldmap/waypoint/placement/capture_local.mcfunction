# Subtract the integer anchor position before reading floats to retain precision at large X/Z.
$tp @s ~$(x) ~$(y) ~$(z)
$data modify storage yrh.map:waypoint_placement ray.$(field) set from entity @s Pos
kill @s
