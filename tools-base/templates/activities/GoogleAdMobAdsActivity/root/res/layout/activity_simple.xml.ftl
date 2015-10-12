<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    <#if adFormat == "banner">xmlns:ads="http://schemas.android.com/apk/res-auto"</#if>
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context="${relativePackage}.${activityClass}">

    <#if adFormat == "banner">
    <TextView
        android:text="@string/hello_world"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content" />

    <!-- view for AdMob Banner Ad -->
    <com.google.android.gms.ads.AdView
        android:id="@+id/adView"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_centerHorizontal="true"
        android:layout_alignParentBottom="true"
        ads:adSize="BANNER"
        ads:adUnitId="@string/banner_ad_unit_id" />

    <#elseif adFormat == "interstitial">
    <!-- view for AdMob Interstitial Ad -->
    <TextView
        android:id="@+id/app_title"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_centerHorizontal="true"
        android:layout_marginTop="50dp"
        android:text="@string/interstitial_ad_sample"
        android:textAppearance="?android:attr/textAppearanceLarge" />

    <TextView
        android:id="@+id/level"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_below="@+id/app_title"
        android:layout_centerHorizontal="true"
        android:text="@string/start_level"
        android:textAppearance="?android:attr/textAppearanceLarge" />

    <Button
        android:id="@+id/next_level_button"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_centerHorizontal="true"
        android:layout_centerVertical="true"
        android:text="@string/next_level" />
    </#if>
</RelativeLayout>
