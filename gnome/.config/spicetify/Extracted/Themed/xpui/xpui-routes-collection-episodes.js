"use strict";(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[289],{90110:(e,t,a)=>{a.d(t,{q:()=>x,o:()=>S});var l=a(67294),r=a.n(l),n=a(69518),i=a.n(n),s=a(50020),o=a(96895),c=a(24656),u=a(69010),m=a(94184),d=a.n(m);const g="_d4_L7w1NI7t09jkH7cu",E="q6RbWlHDlbjkbXsca2Yd",p="YuL8TZO5okStcwZtm4zm",y="_TQIlzCUR8U8a6e2b1GQ",b="UvNLcAhjESB_LRPqmfOK",f="JRR8DDodD_hwH0AdW_Z1",h="_YsfF19yZTzikt2Ed8hB";var v=a(6116),w=a(20657),N=a(40080),C=a(38209);var P=a(80946),k=a(83692);let x;!function(e){e[e.sm=24]="sm",e[e.md=32]="md"}(x||(x={}));const O=e=>{const{currentTarget:t,detail:a}=e;a>0&&t&&t.blur()},S=({uri:e,isFollowing:t,onFollow:a,size:n=x.sm,className:m})=>{const S={"--size":`${n}px`},{useDownloading:D,useDownloadCapability:L}=(0,l.useContext)(c.I),[_,I]=(0,l.useState)(!1),[A,R]=L(i().isEpisode(e)),[z,M]=(0,l.useState)(!1),{currentAvailability:T,progress:U,beginDownload:Z,clearDownload:$}=D(e);((e,t)=>{const a=(0,C.r)(),r=(0,l.useRef)(!1);(0,l.useEffect)((()=>{e===u.V8.DOWNLOADING&&!1===r.current&&(r.current=!0,a.say(w.ag.get("download.downloading",t.totalItems)))}),[a,e,t]);const n=(0,N.D)(e);(0,l.useEffect)((()=>{n===u.V8.DOWNLOADING&&e===u.V8.YES&&(r.current=!1,a.say(w.ag.get("download.complete")))}),[a,n,e])})(T,U);const j=(0,l.useCallback)((e=>{R===u.v$.DOWNLOADING_NOT_ALLOWED?M(!0):!1===t?(a(),I(!0)):Z(),O(e)}),[Z,R,t,a]),W=(0,l.useCallback)((e=>{$(),O(e)}),[$]);return(0,l.useEffect)((()=>{!0===_&&!0===t&&(Z(),I(!1))}),[t,_,Z]),A===u.PQ.NO_DOWNLOAD_CAPABILITY?null:R===u.v$.DOWNLOADING_NOT_ALLOWED?r().createElement("div",{className:E},r().createElement(k.w,{label:w.ag.get("download.download")},r().createElement("button",{className:d()(p,m),role:"switch",onClick:j,"aria-label":w.ag.get("download.download"),"aria-checked":!1},r().createElement(s.a,{iconSize:n}))),z&&r().createElement("div",{className:h},r().createElement(P.E,{withTopLeftPointer:!0,horizontal:!0,onClose:()=>{M(!1)}},w.ag.get("download.upsell")))):T===u.V8.YES?r().createElement(k.w,{label:w.ag.get("download.remove")},r().createElement("button",{className:d()(p,m,y),role:"switch",onClick:W,"aria-label":w.ag.get("download.remove"),"aria-checked":!0},r().createElement(o.C,{iconSize:n}))):T===u.V8.NO?r().createElement(k.w,{label:w.ag.get("download.download")},r().createElement("button",{className:d()(p,m),role:"switch",onClick:j,"aria-label":w.ag.get("download.download"),"aria-checked":!1},r().createElement(s.a,{iconSize:n}))):r().createElement("div",{className:d()(b,m),role:"switch","aria-checked":!0},r().createElement(k.w,{label:w.ag.get("download.cancel")},r().createElement("button",{style:S,className:d()(p,g,m),onClick:W,"aria-label":w.ag.get("download.cancel")})),r().createElement("span",{style:S,className:d()(f,g)},r().createElement(v.e,{"aria-valuetext":w.ag.get("progress.downloading-tracks"),percentage:U.percentage,size:n})))}},37483:(e,t,a)=>{a.d(t,{p:()=>m,q:()=>i.q});var l=a(67294),r=a.n(l),n=a(65858),i=a(90110),s=a(56802),o=a(8475),c=a(4383);const u=r().memo((({uri:e,size:t=i.q.md,className:a})=>{const[u,m]=(0,c.Z)(e),d=(0,n.I0)(),g=(0,s.o)(),E=(0,l.useCallback)((()=>{g({targetUri:e,intent:u?"remove-from-library":"add-to-library",type:"click"}),m(!u),d(u?(0,o.SS)():(0,o.kK)())}),[g,e,u,m,d]);return r().createElement(i.o,{className:a,isFollowing:u,onFollow:E,uri:e,size:t})})),m=r().memo((e=>r().createElement(u,e)))},14590:(e,t,a)=>{a.d(t,{Q:()=>s,$:()=>o});var l=a(67294),r=a.n(l),n=a(22583),i=a(5292);const s=(0,l.createContext)({setSortState:()=>{throw new Error("setSortState must be used within a LibrarySortProvider")},sortState:i.oT.ADDED_AT}),o=r().memo((function({uri:e,children:t,defaultSortOption:a}){return r().createElement(n.r,{uri:e,defaultState:a,sortContext:s},t)}))},88852:(e,t,a)=>{a.d(t,{E:()=>d});var l=a(67294),r=a.n(l),n=a(45342);const i="_t4dWNbZEvXjJEyYebWT";var s=a(61048),o=a(95289),c=a(5292),u=a(14590);const m=r().memo((({sortOptions:e})=>{const{sortState:t,setSortState:a}=(0,l.useContext)(u.Q),n=(0,l.useCallback)((e=>{a(c.ei[e])}),[a]),i=e.map((e=>c.MY[e])),s=c.MY[t];return r().createElement(o.A,{options:i,onSelect:n,selected:s})})),d=r().memo((({filterPlaceholder:e,sortOptions:t})=>{const a=(0,l.useContext)(n.H);return r().createElement("div",{className:i},null!=a&&a.getCapabilities().canFilter?r().createElement(s.K,{placeholder:e}):null,null!=a&&a.getCapabilities().canSort?r().createElement(m,{sortOptions:t}):null)}))},72831:(e,t,a)=>{a.r(t),a.d(t,{YourEpisodes:()=>se,YourEpisodesContainer:()=>oe,default:()=>ce});var l=a(67294),r=a.n(l),n=a(9296),i=a(20657),s=a(45342),o=a(1663),c=a(53424),u=a(59482),m=a(72907),d=a(30947),g=a(55120),E=a(55911),p=a(56347),y=a(53646),b=a(59713),f=a.n(b),h=a(42922),v=a(37763),w=a.n(v),N=a(15212),C=a(21127),P=a(87257),k=a(56802),x=a(18261),O=a(25988),S=a(37630),D=a(95661),L=a(20246),_=a(95806),I=a(4383),A=a(24656),R=a(84242),z=a(4236),M=a(42781),T=a(8341),U=a(84788),Z=a(75016),$=a(5944),j=a(22423),W=a(78920),G=a(16783),Y=a(57978);const F={small:64,standard:300,large:640,xlarge:1024},q=r().memo((({index:e,contextUri:t,episode:a,onRemove:n,usePlayContextItem:s})=>{var o,c,u,m;const d=(0,l.useRef)(a.duration.milliseconds-a.timeLeft.milliseconds),g=a.uri,[E,p]=(0,l.useState)(0===a.timeLeft.milliseconds),{filter:y}=(0,l.useContext)(j.fo),b=(0,W.P)(),f=(0,N.O1)(),v=(0,S.jh)(),q=(0,k.o)(),[H]=(0,I.Z)(g,!0),{useCurrentAvailability:K}=(0,l.useContext)(A.I),[B]=K(g),X=(0,z.k)(),Q=(0,T.Y)((e=>{var t;if((null==e||null===(t=e.item)||void 0===t?void 0:t.uri)===a.uri){var l;const t=null!==(l=(0,$.k)(e))&&void 0!==l?l:0;return d.current=t,t}return 0})),{isPlaying:V,isActive:J,togglePlay:ee}=s({uri:g,index:e}),{isPlaying:te,isActive:ae,togglePlay:le}=(0,R.n)({uri:g,pages:[{items:[{type:M.p.EPISODE,uri:g,uid:null,provider:null}]}]},{featureIdentifier:"your_library",referrerIdentifier:"your_library"});(0,l.useEffect)((()=>{H||n()}),[H,n]),(0,l.useEffect)((()=>{V||a.duration.milliseconds<=d.current&&p(!0)}),[V,a.duration.milliseconds]);const re=(0,l.useCallback)((e=>{e||(d.current=0),p(e)}),[]),ne=(0,l.useCallback)((()=>{q({type:"click",targetUri:g,intent:"navigate"})}),[g,q]),ie=(0,l.useCallback)((()=>{X?(q({type:"click",intent:V?"pause":"play"}),ee()):(q({type:"click",intent:te?"pause":"play"}),le())}),[X,V,te,q,ee,le]),se=(0,l.useCallback)((e=>r().createElement(w(),{searchWords:[y],textToHighlight:e,findChunks:b,highlightClassName:G.Z.filterHighlight})),[y,b]),oe=null!==(o=null===(c=a.podcastSubscription)||void 0===c?void 0:c.isPaywalled)&&void 0!==o&&o,ce=null!==(u=null===(m=a.podcastSubscription)||void 0===m?void 0:m.isUserSubscribed)&&void 0!==u&&u,{badges:ue}=(0,U.r)({isExplicit:a.isExplicit,isMOGEFRestricted:a.is19PlusOnly,isPaywalled:oe});let me=!1;return(J||!X&&ae)&&(me=!0),H?r().createElement(h.ZP,{value:"row",index:e},r().createElement(x._,{menu:r().createElement(O.k,{uri:g,showUri:a.show.uri,isPlayed:E,onMarkAsPlayed:re})},r().createElement(C.X,{index:e,uri:g,uid:g,size:v,images:a.images.map((e=>({url:e.url,width:e.width||(e.label?F[e.label]:null),height:e.height||(e.label?F[e.label]:null)}))),isPaywalled:oe,isUserSubscribed:ce,name:a.name,highlightText:se,showName:a.show.name,showUri:a.show.uri,description:a.description,isPlayable:a.isPlayable&&B,fullyPlayed:E,durationMs:a.duration.milliseconds,releaseDate:a.release.date.toString()||"",resumePositionMs:d.current,handleDragStart:e=>{if(e.target!==e.currentTarget)return;const l=`${a.name} · ${a.show.name}`;f(e,[g],l,t)},handlePlaybackClick:ie,handleClick:ne,isCurrentlyPlaying:me,isPlaying:X?V:te,position:me?Q:void 0,episodeSharingInfo:null,onMarkAsPlayed:re,badges:r().createElement(r().Fragment,null,ue.explicit&&r().createElement(P.N,null),ue.paid&&r().createElement(Z.g,null),ue.nineteen&&r().createElement(Y.X,{size:16})),playButtonWrapper:e=>r().createElement(_.l,{enabled:oe&&!ce,showUri:a.show.uri},e),topActionButtons:r().createElement(L.y,{menu:r().createElement(O.k,{uri:g,showUri:a.show.uri,isPlayed:E,onMarkAsPlayed:re})},r().createElement(D.z,{size:D.q.sm,label:i.ag.get("more.label.context",a.name)}))}))):null}));var H=a(5292),K=a(14590),B=a(33241);const X="vbPAnsy5q_8f37ZbO0pe",Q="_3oPFRZ9whFR_DtvdIxo";function V(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var l=Object.getOwnPropertySymbols(e);t&&(l=l.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,l)}return a}function J(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?V(Object(a),!0).forEach((function(t){f()(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):V(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}const ee=r().memo((({contextUri:e,usePlayContextItem:t})=>{const a=(0,l.useContext)(s.H),{sortState:n}=(0,l.useContext)(K.Q),[i,o]=(0,l.useState)({totalLength:0,offset:0,items:[],limit:50}),c=(0,l.useRef)(!1),u=(0,l.useRef)(0),m=(0,l.useRef)(0),{filter:d}=(0,l.useContext)(j.fo),g=(0,l.useCallback)((()=>{m.current++}),[]),{ref:E,breakpoint:p}=(0,S.Db)({[S.Uo.MEDIUM]:0,[S.Uo.LARGE]:600}),y=(0,l.useCallback)(((e=!1)=>{const t=u.current;null!==t&&(c.current||(c.current=!0,(async e=>{const t=await a.getEpisodes({offset:e-m.current,limit:50,sort:(0,H.sv)(n),filter:d});return m.current=0,t})(Number(t)).then((a=>{o((l=>{const r=Number(a.offset)+a.items.length,n=e?[]:[...l.items];return n.splice(Number(t),a.items.length,...a.items),u.current=r<a.totalLength?r:null,J(J({},a),{},{items:n})})),c.current=!1}))))}),[d,a,n]);return(0,l.useEffect)((()=>{u.current=0,y(!0)}),[y]),r().createElement(S.ZU.Provider,{value:p},r().createElement(h.ZP,{value:"track-list"},r().createElement("div",{ref:E},r().createElement(B.C,{onReachBottom:y,triggerOnInitialLoad:!0},i.items.map(((a,l)=>r().createElement("div",{className:Q,key:`${l}${a.uri}`},r().createElement("hr",{className:X,"aria-hidden":!0}),r().createElement(q,{key:`${a.uri}/${l}`,index:l,episode:a,contextUri:e,onRemove:g,usePlayContextItem:t}))))))))}));var te=a(83693),ae=a(44887),le=a(64624),re=a(88852),ne=a(19565),ie=a(36132);const se=({metadata:e,canSort:t})=>{const a=(0,y.Y5)("#006450"),{sortState:s}=(0,l.useContext)(K.Q),{filter:o}=(0,l.useContext)(j.fo),p=(0,z.k)(),{isPlaying:b,togglePlay:f,usePlayContextItem:h}=(0,R.n)({uri:e.uri,metadata:{[te.sb.SORTING_CRITERIA]:(0,H._s)(s),[te.sb.FILTERING_PREDICATE]:(0,ie.aK)(o)}},{featureIdentifier:"your_library",referrerIdentifier:"your_library"}),v=()=>f(),{uri:w,name:N,images:C,totalLength:P,owner:k}=e,x=(0,l.useMemo)((()=>({id:k.username,uri:k.uri,name:k.username,displayName:k.displayName||void 0,images:k.images||[]})),[k]),O=e.totalLength>0;return r().createElement("section",{className:G.Z.yourEpisodes,"data-testid":"your-episodes-page"},r().createElement(c.gF,{backgroundColor:a},r().createElement(u.W,null,r().createElement(g.$,{size:E.qE.sm,onClick:v,isPlaying:b,uri:w,disabled:!p,ariaPlayLabel:i.ag.get("playlist.a11y.play",N),ariaPauseLabel:i.ag.get("playlist.a11y.pause",N)}),r().createElement(m.i,{text:N})),r().createElement(c.Oz,{images:C,name:N,shape:ae.K.ROUNDED_CORNERS,renderImage:()=>r().createElement(le.$,null)}),r().createElement(c.sP,null,r().createElement(c.dy,{small:!0,uppercase:!0},i.ag.get("playlist")),r().createElement(c.xd,{canEdit:!1,onClick:()=>{},className:G.Z.playlistTitle},N),r().createElement(c.QS,{creators:[x],totalEpisodes:P}))),r().createElement("div",{className:G.Z.yourEpisodesContentWrapper},r().createElement(d.o,{backgroundColor:a},r().createElement(d.F,null,O&&r().createElement(g.$,{onClick:v,isPlaying:b,size:E.qE.lg,uri:w,disabled:!p,ariaPlayLabel:i.ag.get("playlist.a11y.play",N),ariaPauseLabel:i.ag.get("playlist.a11y.pause",N)}),t&&r().createElement("div",{className:G.Z.searchBoxContainer},r().createElement(re.E,{filterPlaceholder:i.ag.get("playlist.search_in_playlist"),sortOptions:H.$2})))),r().createElement("div",{className:"contentSpacing"},e.totalLength>0&&r().createElement(ee,{contextUri:w,usePlayContextItem:h}))),0===e.totalLength&&r().createElement("div",{className:"contentSpacing"},r().createElement(ne.u,{message:i.ag.get("collection.empty-page.episodes-subtitle"),title:i.ag.get("collection.empty-page.episodes-title"),linkTo:"/genre/podcasts-web",linkTitle:i.ag.get("collection.empty-page.shows-cta"),renderInline:!0},r().createElement(n.Z,null))))},oe=r().memo((()=>{const e=(0,l.useContext)(s.H).getCapabilities(),t=(0,p.x)();return t?r().createElement(K.$,{uri:t.uri,defaultSortOption:H.oT.ADDED_AT},r().createElement(j.hz,{uri:t.uri},r().createElement(se,{metadata:t,canSort:e.canSort&&t.totalLength>0}))):r().createElement(o.h,{errorMessage:i.ag.get("error.not_found.title.page"),loadOffline:e.canModifyOffline})})),ce=oe},40080:(e,t,a)=>{a.d(t,{D:()=>r});var l=a(67294);function r(e){const t=(0,l.useRef)();return(0,l.useEffect)((()=>{t.current=e}),[e]),t.current}},92408:(e,t,a)=>{a.d(t,{E:()=>S,$:()=>O});var l=a(67294),r=a.n(l),n=a(43315),i=a(59713),s=a.n(i);const o="eNli_on6NKVg6goSHat0",c="_W4RNb78q54d8CmYNjxt",u="Mqo4527lttYL3SMlLiDA",m="BKBLI6fo3ZWoLFz_Pwxk";a(45697);class d extends l.PureComponent{render(){const{ariaValueText:e,max:t,current:a}=this.props,l=t&&a?100*Math.min(1,a/t):0,n={transform:`translateX(-${100-l}%)`},i=e||`${Math.round(l)}%`;return r().createElement("div",{className:o,role:"progressbar",tabIndex:0,"aria-valuenow":a,"aria-valuemin":0,"aria-valuemax":t,"aria-valuetext":i},r().createElement("div",{className:c}),r().createElement("div",{className:u},r().createElement("div",{className:m,style:n})))}}s()(d,"defaultProps",{current:0,max:1});const g=d,E="U6gSOAj8IGII1kbhA7Rt",p="r_Nz_hdLEJPfrC84kCBL",y="uxJXY4rZxjkZGRECwDq0",b="W1ptGHzNzaGHKOClcZpg",f="Ta09tKvKtonCgyFp3XiN",h="ewzp_6hkdrX_8r8oziLc",v="__edKdqo6DUxYm86bD_G";var w=a(40378),N=a(20657),C=a(76343),P=a(94184),k=a.n(P),x=a(6695);let O;!function(e){e[e.LARGE=0]="LARGE",e[e.SMALL=1]="SMALL"}(O||(O={}));const S=e=>{const{resumePositionMs:t=0,releaseDate:a,isPlaying:l,fullyPlayed:i,durationMs:s,size:o=O.SMALL,position:c=t}=e;return r().createElement("div",{className:k()(E,{[p]:o===O.LARGE})},a?r().createElement(C.Dy.p,{variant:C.$e.mesto,className:y},(0,n.rL)((0,n.RX)(a))):null,(()=>{if(i&&!l)return r().createElement("div",{className:f},r().createElement(C.Dy.p,{variant:C.$e.mesto,className:b},N.ag.get("episode.played")),r().createElement(w.R,{iconSize:16,className:v}));if(c>0||l){const e=Math.ceil(Math.max(s-c,0));return r().createElement("div",{className:f},r().createElement(C.Dy.p,{variant:C.$e.mesto,className:b},r().createElement(x.ng,{durationMs:e})))}return r().createElement(C.Dy.p,{variant:C.$e.mesto,className:y},r().createElement(x.nL,{durationMs:s}))})(),!i&&c>0||l?r().createElement("div",{className:h},r().createElement(g,{current:c,max:s,isEnabled:!1})):null)}}}]);
//# sourceMappingURL=xpui-routes-collection-episodes.js.map