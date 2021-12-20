'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "canvaskit/canvaskit.js": "62b9906717d7215a6ff4cc24efbd1b5c",
"canvaskit/profiling/canvaskit.js": "3783918f48ef691e230156c251169480",
"canvaskit/profiling/canvaskit.wasm": "6d1b0fc1ec88c3110db88caa3393c580",
"canvaskit/canvaskit.wasm": "b179ba02b7a9f61ebc108f82c5a1ecdb",
"main.dart.js": "091906efde1c5b52776be1072c959232",
"version.json": "8569725c7281380ca56da3be27fcbcaf",
"manifest.json": "d660528076da2df64c53b5603c747881",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"assets/NOTICES": "301c4635684f4958f697cf8767b31fcb",
"assets/AssetManifest.json": "cfc79b39d75b749a66353983f687fe4f",
"assets/json/flutter_widget_of_the_week.json": "7d67f53a4da6ea39ecb423b6d7450f15",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/md/code/21.md": "91f270083fc11cda4a91f77acdc39cd1",
"assets/md/code/8.md": "e3724927a13aad9129c744a8728264ce",
"assets/md/code/20.md": "48cde47c3d32db56242cb1c3f07b23ec",
"assets/md/code/4.md": "849f31bde04e10c0e96433a157f38745",
"assets/md/code/6.md": "e030bdec4125bfd1df9d8579d55870db",
"assets/md/code/12.md": "895758dac05b319762523685f201b933",
"assets/md/code/19.md": "d98ab659fe59e3969eb9d41622ba57c1",
"assets/md/code/17.md": "16f203e71f90e2f7be0a79feef7cb58f",
"assets/md/code/16.md": "7b0f6004cfb99092698d8a98df679d4d",
"assets/md/code/9.md": "196cf7e7c68526f28103ae770bcae215",
"assets/md/code/15.md": "b83faa08132c62b69d97a01196972df0",
"assets/md/code/11.md": "b7c7cc4fdb191dfb59b82a62d94f1d15",
"assets/md/code/0.md": "85b73433f8d884847d8268cb235fad27",
"assets/md/code/5.md": "c22cab442688eb6ccc497cf4569b1cf9",
"assets/md/code/3.md": "cb947b2fafa84bd47f9d6c72408f336b",
"assets/md/code/14.md": "b4988f9a1e7fab9350d81dd0bbcf996a",
"assets/md/code/7.md": "96000ea8b667a842f168da0a90bf958e",
"assets/md/code/13.md": "fa7e0d840470e2c9ae597145b293a17f",
"assets/md/code/18.md": "213bf2ef13eb3bc0d1fc546580e7b6c7",
"assets/md/code/1.md": "417ada2b2b0976b948d8592f81beaeca",
"assets/md/code/10.md": "a9c4f6d15060902dbcec7773ae928abe",
"assets/md/code/2.md": "57508ff26f281fd0fa6456b9a33b61b5",
"assets/md/description/21.md": "370f6ade7cbedd7d2e184f882fb437ed",
"assets/md/description/8.md": "336d777205ba5ee1d33b2051e42cafeb",
"assets/md/description/20.md": "5f61a5b6cc4df3f48b891d4d17be8794",
"assets/md/description/4.md": "dcb2af376d61e600812f0b19e386559f",
"assets/md/description/6.md": "33a28786bd3f9942b0b94fc7c1a47280",
"assets/md/description/12.md": "e7271574aaa7c6bf137b53989cc1f657",
"assets/md/description/19.md": "bbe4303e171aaf07f8c9f0c9d6d208ce",
"assets/md/description/17.md": "7938112d38f760c11d0adc2be7204f7e",
"assets/md/description/16.md": "a5ad81e7b1fb9738c95250a81229287e",
"assets/md/description/9.md": "e4b788480a04181ccc2d268e0b48a471",
"assets/md/description/15.md": "3f33b01ea77f47eca91cf39f27e349cb",
"assets/md/description/11.md": "29091923d4537cc496c7401098055e8b",
"assets/md/description/0.md": "97554d1add2a1e51e96d65c19937e106",
"assets/md/description/5.md": "b5acdd79f978dd16fc10da1211f355dd",
"assets/md/description/3.md": "e0dd0714231a4cf5811545d7d36ead66",
"assets/md/description/14.md": "3495e627d79a08c429bf6fe867ae64d6",
"assets/md/description/7.md": "1aef86a46a3996b466c6d1b9cd67f182",
"assets/md/description/13.md": "cad8d11b7f3ee4fba59293924a7c9866",
"assets/md/description/18.md": "8ea82b2cbda816c4c87cff99b6c19151",
"assets/md/description/1.md": "9c24abe7ddfe154932319148a059bda6",
"assets/md/description/10.md": "92d199885e577b74e33e885e114cf702",
"assets/md/description/2.md": "1cdbc8cbb439096ede193f17c85ec5d2",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.html": "16911fcc170c8af1c5457940bd0bf055",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.css": "5a8d0222407e388155d7d1395a75d5b9",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"index.html": "73da6bb79539c0b2d74becb4c5649323",
"/": "73da6bb79539c0b2d74becb4c5649323",
"favicon.png": "5dcef449791fa27946b3d35ad8803796"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
