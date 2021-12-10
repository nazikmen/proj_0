/// @description Creates an instance of a given object at a given position.
/// @param x The x position the object will be created at.
/// @param y The y position the object will be created at.
/// @param obj The object to create an instance of.
function instance_create() {
	// instance_create()
	var myDepth = 0;
	if (argument_count > 3) myDepth = argument[3];
	return instance_create_depth(argument[0], argument[1], myDepth, argument[2]);

}
