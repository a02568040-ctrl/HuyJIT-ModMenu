#include <vector>
#include <string>

namespace ImGui {
    struct ImVec2 { float x, y; ImVec2() : x(0), y(0) {} ImVec2(float _x, float _y) : x(_x), y(_y) {} };
    struct ImVec4 { float x, y, z, w; ImVec4() : x(0), y(0), z(0), w(0) {} ImVec4(float _x, float _y, float _z, float _w) : x(_x), y(_y), z(_z), w(_w) {} };
    
    enum Cond { FirstUseEver = 1 << 0 };
    enum WindowFlags { NoCollapse = 1 << 1, NoResize = 1 << 2 };

    inline void StyleColorsDark() {}
    inline void SetNextWindowSize(const ImVec2& size, int cond = 0) {}
    inline bool Begin(const char* name, bool* p_open = nullptr, int flags = 0) { return true; }
    inline void End() {}
    inline void SetCursorPosX(float local_x) {}
    inline void Text(const char* fmt, ...) {}
    inline void TextColored(const ImVec4& col, const char* fmt, ...) {}
    inline void Separator() {}
    inline bool BeginChild(const char* str_id, const ImVec2& size = ImVec2(0,0), bool border = false, int flags = 0) { return true; }
    inline void EndChild() {}
    inline bool Button(const char* label, const ImVec2& size = ImVec2(0,0)) { return false; }
    inline void SameLine(float offset_from_start_x = 0.0f, float spacing = -1.0f) {}
    inline bool Checkbox(const char* label, bool* v) { return false; }
    inline void Columns(int count = 1, const char* id = nullptr, bool border = true) {}
    inline void NextColumn() {}
    inline void SetNextItemWidth(float item_width) {}
    inline bool SliderInt(const char* label, int* v, int v_min, int v_max, const char* format = "%d", int flags = 0) { return false; }
    inline bool Combo(const char* label, int* current_item, const char* const items[], int items_count, int popup_max_height_in_items = -1) { return false; }
}

bool esp_active = true;
bool esp_distance = true;
bool esp_count = true;
bool esp_name = true;
bool esp_box = false;
bool esp_line = true;
bool esp_weapon = false;
bool esp_skeleton = false;
bool esp_grenade_warning = false;
bool hide_bots = false;
bool esp_loot = true;
bool esp_vehicles = true;
int esp_max_distance = 600;

bool aimbot_enabled = false;
bool aimbot_fov_circle = true;
bool aimbot_360_degree = false; 
bool memory_no_recoil = true;    
bool memory_magic_bullet = false;
int aimbot_bone = 0; 

bool vehicle_fly = false;
bool vehicle_god_mode = false;
int selected_supercar = 0; 
int vehicle_speed_multiplier = 2; 

int selected_all_guns_type = 0; 
bool profile_level_100_fake = true;
bool profile_sets_collection_100 = true;
int selected_outfit_suit = 0;   
int selected_pants = 0;         
int selected_tshirt_sleeves = 0; 
int selected_hat_cap = 0;       
int selected_all_game_outfits = 0; 

int selected_mummy_skin = 0;
int selected_pharaoh = 0;
bool lobby_skins_fake = true;      
bool lobby_grenades_fake = true;   
bool fake_uc_enabled = true;      
int fake_uc_amount = 999999;      

bool extreme_bypass_shield = true;   
bool stream_safe_mode = true;    

int selected_hp_style = 0;
int selected_radar = 0;
int active_tab = 0; 

void RenderASDMENU() {
    static bool menu_open = true;
    if (!menu_open) return;

    ImGui::StyleColorsDark();
    
    ImGui::SetNextWindowSize(ImGui::ImVec2(800, 540), ImGui::FirstUseEver);
    ImGui::Begin("ASDMENU VIP - 🐅ASDMOD🐅 ULTIMATE COMPLETE SUITE", &menu_open, ImGui::NoCollapse | ImGui::NoResize);

    ImGui::SetCursorPosX(210);
    ImGui::TextColored(ImGui::ImVec4(0.2f, 0.6f, 1.0f, 1.0f), "🐅ASDMOD🐅 - MASTER VIP SUITE v10.0");
    ImGui::Separator();

    ImGui::BeginChild("Sidebar", ImGui::ImVec2(110, 0), true);
    if (ImGui::Button("ESP", ImGui::ImVec2(90, 30)))         { active_tab = 0; }
    if (ImGui::Button("AIM", ImGui::ImVec2(90, 30)))         { active_tab = 1; }
    if (ImGui::Button("MEMORY", ImGui::ImVec2(90, 30))      { active_tab = 2; }
    if (ImGui::Button("SUPERCAR", ImGui::ImVec2(90, 30))    { active_tab = 3; }
    if (ImGui::Button("GUNS/MAX", ImGui::ImVec2(90, 30))    { active_tab = 4; }
    if (ImGui::Button("OUTFITS/100", ImGui::ImVec2(90, 30)) { active_tab = 5; }
    if (ImGui::Button("SHIELD", ImGui::ImVec2(90, 30))      { active_tab = 6; }