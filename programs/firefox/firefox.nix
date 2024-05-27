{ config, pkgs, ... }:

  let
    lock-false = {
      Value = false;
      Status = "locked";
    };
    lock-true = {
      Value = true;
      Status = "locked";
    };
  in
{
  programs = {
    firefox = {
      enable = true;

      /* ---- POLICIES ---- */
      # Check about:policies#documentation for options.
      policies = {
        DisableTelemetry = true;
        DisableFirefoxStudies = true;
        EnableTrackingProtection = {
          Value= true;
          Locked = true;
          Cryptomining = true;
          Fingerprinting = true;
        };
        DisablePocket = true;
        DisableFirefoxAccounts = true;
        DisableAccounts = true;
        DisableFirefoxScreenshots = true;
        OverrideFirstRunPage = "";
        OverridePostUpdatePage = "";
        DontCheckDefaultBrowser = true;
        DisplayBookmarksToolbar = "never"; # alternatives: "always" or "newtab"
        DisplayMenuBar = "default-off"; # alternatives: "always", "never" or "default-on"
        SearchBar = "unified"; # alternative: "separate"

        /* ---- EXTENSIONS ---- */
        # Check about:support for extension/add-on ID strings.
        # Valid strings for installation_mode are "allowed", "blocked",
        # "force_installed" and "normal_installed".
        ExtensionSettings = {
          "*".installation_mode = "blocked"; # blocks all addons except the ones specified below
          # uBlock Origin:
          "uBlock0@raymondhill.net" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
            installation_mode = "force_installed";
          };
        };
 

        profiles.settings = ''
        /* 
┌─┐┬┌┬┐┌─┐┬  ┌─┐
└─┐││││├─┘│  ├┤ 
└─┘┴┴ ┴┴  ┴─┘└─┘
┌─┐┌─┐─┐ ┬      
├┤ │ │┌┴┬┘      
└  └─┘┴ └─

by Miguel Avila

*/

/*
 
┌─┐┌─┐┌┐┌┌─┐┬┌─┐┬ ┬┬─┐┌─┐┌┬┐┬┌─┐┌┐┌
│  │ ││││├┤ ││ ┬│ │├┬┘├─┤ │ ││ ││││
└─┘└─┘┘└┘└  ┴└─┘└─┘┴└─┴ ┴ ┴ ┴└─┘┘└┘

*/

:root {
  --sfwindow: #19171a;
  --sfsecondary: #201e21;
}

/* Urlbar View */

/*─────────────────────────────*/
/* Comment this section if you */
/* want to show the URL Bar    */
/*─────────────────────────────*/

.urlbarView {
  display: none !important;
}

/*─────────────────────────────*/

/* 
┌─┐┌─┐┬  ┌─┐┬─┐┌─┐
│  │ ││  │ │├┬┘└─┐
└─┘└─┘┴─┘└─┘┴└─└─┘ 
*/

/* Tabs colors  */
#tabbrowser-tabs:not([movingtab])
  > #tabbrowser-arrowscrollbox
  > .tabbrowser-tab
  > .tab-stack
  > .tab-background[multiselected='true'],
#tabbrowser-tabs:not([movingtab])
  > #tabbrowser-arrowscrollbox
  > .tabbrowser-tab
  > .tab-stack
  > .tab-background[selected='true'] {
  background-image: none !important;
  background-color: var(--toolbar-bgcolor) !important;
}

/* Inactive tabs color */
#navigator-toolbox {
  background-color: var(--sfwindow) !important;
}

/* Window colors  */
:root {
  --toolbar-bgcolor: var(--sfsecondary) !important;
  --tabs-border-color: var(--sfsecondary) !important;
  --lwt-sidebar-background-color: var(--sfwindow) !important;
  --lwt-toolbar-field-focus: var(--sfsecondary) !important;
}

/* Sidebar color  */
#sidebar-box,
.sidebar-placesTree {
  background-color: var(--sfwindow) !important;
}

/* 

┌┬┐┌─┐┬  ┌─┐┌┬┐┌─┐            
 ││├┤ │  ├┤  │ ├┤             
─┴┘└─┘┴─┘└─┘ ┴ └─┘            
┌─┐┌─┐┌┬┐┌─┐┌─┐┌┐┌┌─┐┌┐┌┌┬┐┌─┐
│  │ ││││├─┘│ ││││├┤ │││ │ └─┐
└─┘└─┘┴ ┴┴  └─┘┘└┘└─┘┘└┘ ┴ └─┘

*/

/* Tabs elements  */
.tab-close-button {
  display: none;
}

.tabbrowser-tab:not([pinned]) .tab-icon-image {
  display: none !important;
}

#nav-bar:not([tabs-hidden='true']) {
  box-shadow: none;
}

#tabbrowser-tabs[haspinnedtabs]:not([positionpinnedtabs])
  > #tabbrowser-arrowscrollbox
  > .tabbrowser-tab[first-visible-unpinned-tab] {
  margin-inline-start: 0 !important;
}

:root {
  --toolbarbutton-border-radius: 0 !important;
  --tab-border-radius: 0 !important;
  --tab-block-margin: 0 !important;
}

.tab-background {
  border-right: 0px solid rgba(0, 0, 0, 0) !important;
  margin-left: -4px !important;
}

.tabbrowser-tab:is([visuallyselected='true'], [multiselected])
  > .tab-stack
  > .tab-background {
  box-shadow: none !important;
}

.tabbrowser-tab[last-visible-tab='true'] {
  padding-inline-end: 0 !important;
}

#tabs-newtab-button {
  padding-left: 0 !important;
}

/* Url Bar  */
#urlbar-input-container {
  background-color: var(--sfsecondary) !important;
  border: 1px solid rgba(0, 0, 0, 0) !important;
}

#urlbar-container {
  margin-left: 0 !important;
}

#urlbar[focused='true'] > #urlbar-background {
  box-shadow: none !important;
}

#navigator-toolbox {
  border: none !important;
}

/* Bookmarks bar  */
.bookmark-item .toolbarbutton-icon {
  display: none;
}
toolbarbutton.bookmark-item:not(.subviewbutton) {
  min-width: 1.6em;
}

/* Toolbar  */
#tracking-protection-icon-container,
#urlbar-zoom-button,
#star-button-box,
#pageActionButton,
#pageActionSeparator,
#tabs-newtab-button,
#back-button,
#PanelUI-button,
#forward-button,
.tab-secondary-label {
  display: none !important;
}

.urlbarView-url {
  color: #dedede !important;
}

/* Disable elements  */
#context-navigation,
#context-savepage,
#context-pocket,
#context-sendpagetodevice,
#context-selectall,
#context-viewsource,
#context-inspect-a11y,
#context-sendlinktodevice,
#context-openlinkinusercontext-menu,
#context-bookmarklink,
#context-savelink,
#context-savelinktopocket,
#context-sendlinktodevice,
#context-searchselect,
#context-sendimage,
#context-print-selection {
  display: none !important;
}

#context_bookmarkTab,
#context_moveTabOptions,
#context_sendTabToDevice,
#context_reopenInContainer,
#context_selectAllTabs,
#context_closeTabOptions {
  display: none !important;
}
        '';
        /* ---- PREFERENCES ---- */
        # Check about:config for options.
        Preferences = {
          "toolkit.legacyUserProfileCustomizations.stylesheets" = lock-true;
          "browser.contentblocking.category" = { Value = "strict"; Status = "locked"; };
          "extensions.pocket.enabled" = lock-false;
          "extensions.screenshots.disabled" = lock-true;
          "browser.topsites.contile.enabled" = lock-false;
          "browser.formfill.enable" = lock-false;
          "browser.search.suggest.enabled" = lock-false;
          "browser.search.suggest.enabled.private" = lock-false;
          "browser.urlbar.suggest.searches" = lock-false;
          "browser.urlbar.showSearchSuggestionsFirst" = lock-false;
          "browser.newtabpage.activity-stream.feeds.section.topstories" = lock-false;
          "browser.newtabpage.activity-stream.feeds.snippets" = lock-false;
          "browser.newtabpage.activity-stream.section.highlights.includePocket" = lock-false;
          "browser.newtabpage.activity-stream.section.highlights.includeBookmarks" = lock-false;
          "browser.newtabpage.activity-stream.section.highlights.includeDownloads" = lock-false;
          "browser.newtabpage.activity-stream.section.highlights.includeVisited" = lock-false;
          "browser.newtabpage.activity-stream.showSponsored" = lock-false;
          "browser.newtabpage.activity-stream.system.showSponsored" = lock-false;
          "browser.newtabpage.activity-stream.showSponsoredTopSites" = lock-false;
        };
      };
    };
  };
}
