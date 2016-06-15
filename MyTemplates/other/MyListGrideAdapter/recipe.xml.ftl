<?xml version="1.0"?>
<recipe>
	<instantiate from="root/src/app_package/MainAdapter.java.ftl"
     	to="${escapeXmlAttribute(srcOut)}/${adapterClass}.java" />

	<instantiate from="root/res/layout/adapter_main.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${adapterLayoutName}.xml" />
		
 	<open file="${escapeXmlAttribute(srcOut)}/${adapterClass}.java" />
	
	<open file="${escapeXmlAttribute(resOut)}/layout/${adapterLayoutName}.xml"/>    
    
</recipe>
