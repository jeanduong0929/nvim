local status, autotag = pcall(require, "nvim-ts-autotag")

if not status then
	print("Error loading autotag: " .. autotag)
	return
end

autotag.setup()
