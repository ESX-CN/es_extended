Locales = {}

function _(str, ...)  -- Translate string

	if Locales[Config.Locale] ~= nil then

		if Locales[Config.Locale][str] ~= nil then
			return string.format(Locales[Config.Locale][str], ...)
		else
			return 'Translation [' .. Config.Locale .. '][' .. str .. '] does not exist'
		end

	else
		return 'Locale [' .. Config.Locale .. '] does not exist'
	end

end

function _U(str, ...) -- Translate string first char uppercase
	if type(str) ~= 'table' then
		return tostring(_(str, ...):gsub("^%l", string.upper))
	else
		for i = 1, #str do
			if #str == 1 then
				return tostring(_(str[1]):gsub("^%l", string.upper))
			elseif #str == 2 then
				return tostring(_(str[1], str[2]):gsub("^%l", string.upper))
			elseif #str == 3 then
				return tostring(_(str[1], str[2], str[3]):gsub("^%l", string.upper))
			elseif #str == 4 then
				return tostring(_(str[1], str[2], str[3], str[4]):gsub("^%l", string.upper))
			elseif #str == 5 then
				return tostring(_(str[1], str[2], str[3], str[4], str[5]):gsub("^%l", string.upper))
			elseif #str == 6 then
				return tostring(_(str[1], str[2], str[3], str[4], str[5], str[6]):gsub("^%l", string.upper))
			elseif #str == 7 then
				return tostring(_(str[1], str[2], str[3], str[4], str[5], str[6], str[7]):gsub("^%l", string.upper))
			else
				return tostring('传递参数超出')
			end
		end
	end
end
