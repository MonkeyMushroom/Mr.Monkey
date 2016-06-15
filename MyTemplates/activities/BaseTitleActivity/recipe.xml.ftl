<?xml version="1.0"?>
<recipe>
	<execute file="../common/recipe_manifest.xml.ftl" />

	<instantiate from="root/src/app_package/MainActivity.java.ftl"
     	to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

	<instantiate from="root/res/layout/activity_main.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />

 	<open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
	
	<open file="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml"/>        
</recipe>
