io_clear()
active = false
text = ""
json = "test_lines.json"
if !file_exists(json) {
	file = file_text_open_write(json)
	
	file_text_close(file)
}