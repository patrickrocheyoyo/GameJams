/// @description Insert description here
// You can write your code in this editor

menu_item_active = false;
menu_item_activated_this_frame = false;

function get_all_items()
{
	var items = [];
	
	for(var i = 0; i < instance_number(oMenuItemBase); ++i)
	{
		array_push(items, instance_find(oMenuItemBase, i));
	}
	
	array_sort(items, function(a, b)
	{
		return a.y - b.y;
	});
	
	return items;
}

function get_next_item()
{
	var items = get_all_items();
	
	var this_item_idx = array_find_index(items, function(elem, idx) { return elem == id; });
	var next_item_idx = this_item_idx + 1;
	
	if(next_item_idx < array_length(items))
	{
		return items[@next_item_idx];
	}
	else{
		return undefined;
	}
}

function get_prev_item()
{
	var items = get_all_items();
	
	var this_item_idx = array_find_index(items, function(elem, idx) { return elem == id; });
	var prev_item_idx = this_item_idx - 1;
	
	if(prev_item_idx >= 0)
	{
		return items[@prev_item_idx];
	}
	else{
		return undefined;
	}
}

function get_first_item()
{
	var items = get_all_items();
	return array_first(items);
}

function get_last_item()
{
	var items = get_all_items();
	return array_last(items);
}

function get_active_menu_item()
{
	var items = get_all_items();
	
	for(var i = 0; i < array_length(items); ++i)
	{
		if(items[@i].menu_item_active)
		{
			return items[@i];
		}
	}
	
	return undefined;
}

function menu_item_activate()
{
	var active_item = get_active_menu_item();
	
	if(active_item == id)
	{
		return;
	}
	
	if(!is_undefined(active_item))
	{
		active_item.menu_item_deactivate();
	}
	
	event_user(1);
}

function menu_item_deactivate()
{
	event_user(2);
}
