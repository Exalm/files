/***
    Copyright (c) 2018 elementary LLC <https://elementary.io>

    Pantheon Files is free software; you can redistribute it and/or
    modify it under the terms of the GNU General Public License as
    published by the Free Software Foundation; either version 2 of the
    License, or (at your option) any later version.

    Pantheon Files is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with this program.  If not, see <http://www.gnu.org/licenses/>.

    Author(s):  Fernando da Silva Sousa <wild.nando@gmail.com>
***/

public class Marlin.TreeItem : Object {
    public string name { get; set; }
    public string? uri { get; set; default = null; }
    public Drive? drive { get; set; default = null; }
    public Volume? volume { get; set; default = null; }
    public Mount? mount { get; set; default = null; }
    public Marlin.PlaceType place_type { get;set;default=0; }
    public Icon? icon { get; set; default = null; }
    public uint index { get; set; }
    public bool can_eject { get;set; }
    public string? tooltip { get; set; default = null; }
    public Icon? action_icon { get; set; default = null; }
    public bool show_spinner { get;set; default = false; }
    public uint spinner_pulse { get;set; default = 0; }
    public uint64 free_space { get;set; default = 0; }
    public uint64 disk_size { get;set; default = 0; }
    public MenuModel? menu_model { get;set; }

    public bool is_bookmark () {
        return place_type == Marlin.PlaceType.BOOKMARK;
    }

    public bool is_category () {
        return (place_type == Marlin.PlaceType.BOOKMARKS_CATEGORY) ||
               (place_type == Marlin.PlaceType.PERSONAL_CATEGORY)  ||
               (place_type == Marlin.PlaceType.STORAGE_CATEGORY)   ||
               (place_type == Marlin.PlaceType.NETWORK_CATEGORY);
    }
}