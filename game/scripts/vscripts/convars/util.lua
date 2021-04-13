if convars == nil then
    convars = class({})
end

function convars:convar_init_float(convar, default_value)
	value = Convars:GetFloat(convar)
	if value == nil then
		Convars:RegisterConvar(convar, default_value, "", FCVAR_ARCHIVE)
		value = default_value
	end
	return value
end

function convars:convar_init_bool(convar, default_value)
	value = Convars:GetBool(convar)
	if value == nil then
		Convars:RegisterConvar(convar, default_value, "", FCVAR_ARCHIVE)
		value = default_value
	end
	return value
end