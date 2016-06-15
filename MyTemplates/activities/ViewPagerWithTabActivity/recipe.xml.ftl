<?xml version="1.0"?>
<recipe>
	<execute file="../common/recipe_manifest.xml.ftl" />
	
	<#if !appCompat && !(hasDependency('com.android.support:support-v4'))>
	        <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
	    </#if>

	<#if appCompat && !(hasDependency('com.android.support:appcompat-v7'))>
	       <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+" />
	</#if>

	<#if (buildApi gte 22) && appCompat && !(hasDependency('com.android.support:design'))>
	    <dependency mavenUrl="com.android.support:design:${buildApi}.+" />
	</#if>

	<instantiate from="root/src/app_package/MainActivity.java.ftl"
     	to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

	<instantiate from="root/src/app_package/MainFragment.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/fragment/${fragmentClass}.java" />   

	<instantiate from="root/res/layout/activity_main.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
		
	<instantiate from="root/res/layout/fragment_main.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />

 	<open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
	
	<open file="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml"/>    
    
	<open file="${escapeXmlAttribute(srcOut)}/fragment/${fragmentClass}.java" />
	
	<open file="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml"/>       
</recipe>
