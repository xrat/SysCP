<tr>
	<td class="field_name_border_left"><font size="-1">{$row['id']}</font></td>
	<td class="field_name"><font size="-1">{$row['domain']}</font></td>
	<td class="field_name"><font size="-1">{$row['ipandport']}</font></td>
	<td class="field_name"><font size="-1"><if $row['name'] != '' && $row['firstname'] != ''>{$row['name']}, {$row['firstname']}</if><if $row['name'] != '' && $row['firstname'] != '' && $row['company'] != ''> | </if><if $row['company'] != ''>{$row['company']}</if> ({$row['loginname']})</font></td>
	<td class="field_name"><a href="$filename?s=$s&amp;page=$page&amp;action=edit&amp;id={$row['id']}">{$lng['panel']['edit']}</a></td>
	<td class="field_name"><if !(isset($row['standardsubdomain']) && $row['standardsubdomain'] == $row['id']) && !(isset($row['domainaliasid']) && $row['domainaliasid'] != 0)><a href="$filename?s=$s&amp;page=$page&amp;action=delete&amp;id={$row['id']}">{$lng['panel']['delete']}</a></if><if isset($row['domainaliasid']) && $row['domainaliasid'] != 0>{$lng['domains']['hasaliasdomains']}</if><if (isset($row['standardsubdomain']) && $row['standardsubdomain'] == $row['id'])>{$lng['admin']['stdsubdomain']}</if></td>
</tr>
