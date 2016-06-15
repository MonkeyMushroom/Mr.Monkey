<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:background="@color/baseWhite">
	
	<include
        android:id="@+id/titleBar"
        layout="@layout/base_title" />
    <include
        android:id="@+id/tab"
        layout="@layout/base_tab"/>

    <android.support.v4.view.ViewPager
        android:id="@+id/pager"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:layout_below="@+id/tab" />
</RelativeLayout>
