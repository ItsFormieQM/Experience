if async_load[? "id"] == endsavebuff {
	if async_load[?"status"] == true {
		
	}
	else {
		show_error("issue",0)
	}
	instance_destroy()
}