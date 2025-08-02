-- Lista de URLs RAW (reemplaza con las verdaderas)
local scripts = {
    "https://raw.githubusercontent.com/IJNTJNNPTJ/farm/refs/heads/main/.JL",
    "https://raw.githubusercontent.com/IJNTJNNPTJ/farm/refs/heads/main/.HL",
    "https://raw.githubusercontent.com/IJNTJNNPTJ/farm/refs/heads/main/.VL",
    "https://raw.githubusercontent.com/IJNTJNNPTJ/farm/refs/heads/main/.PL",
    "https://raw.githubusercontent.com/IJNTJNNPTJ/farm/refs/heads/main/.XL",
    "https://raw.githubusercontent.com/IJNTJNNPTJ/farm/refs/heads/main/.ZL",}

for _, url in ipairs(scripts) do
    local success, result = pcall(function()
        local code = game:HttpGet(url)
        return loadstring(code)()
    end)
    
    if success then
        print("✅ Script ejecutado:", url)
    else
        warn("❌ Error al ejecutar script:", url, "\n", result)
    end
end
