$header
	<form action="$filename" method="post">
		<input type="hidden" name="s" value="$s">
		<input type="hidden" name="page" value="$page">
		<input type="hidden" name="send" value="send" />
		<table cellpadding="5" cellspacing="0" border="0" align="center" class="maintable">
			<tr>
				<td class="maintitle_search_left"><b><img src="images/title.gif" alt="" />&nbsp;{$lng['ticket']['archivesearch']}</b></td>
        			<td class="maintitle_search_right" colspan="5">&nbsp;</td>
			</tr>
      			<if 0 < $tickets_count >
			<tr>
				<td class="field_display_border_left">{$lng['ticket']['archivedtime']}</td>
				<td class="field_display">{$lng['ticket']['ticket_answers']}</td>
				<td class="field_display">{$lng['ticket']['subject']}</td>
				<td class="field_display">{$lng['ticket']['lastreplier']}</td>
				<td class="field_display">{$lng['ticket']['priority']}</td>
        			<td class="field_display_search">&nbsp;</td>
			</tr>
			$tickets
      			</if>
      			<if $tickets_count < 1 >
        		<tr>
				<td class="field_display_border_left" colspan="5">{$lng['ticket']['noresults']}</td>
				</tr>
			</if>
		</table>
	</form>
	<br />
	<br />
$footer