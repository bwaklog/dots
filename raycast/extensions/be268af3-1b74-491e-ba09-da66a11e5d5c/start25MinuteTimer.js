"use strict";var c=Object.defineProperty;var g=Object.getOwnPropertyDescriptor;var S=Object.getOwnPropertyNames;var h=Object.prototype.hasOwnProperty;var $=(e,t)=>{for(var o in t)c(e,o,{get:t[o],enumerable:!0})},y=(e,t,o,s)=>{if(t&&typeof t=="object"||typeof t=="function")for(let i of S(t))!h.call(e,i)&&i!==o&&c(e,i,{get:()=>t[i],enumerable:!(s=g(t,i))||s.enumerable});return e};var P=e=>y(c({},"__esModule",{value:!0}),e);var w={};$(w,{default:()=>D});module.exports=P(w);var T=require("@raycast/api");var r=require("@raycast/api"),f=require("child_process");var n=require("fs");var p=e=>{let t=Math.floor(e/3600),o=String(Math.floor(e%3600/60)).padStart(2,"0"),s=String(Math.floor(e%60)).padStart(2,"0");return`${t}:${o}:${s}`};var M=r.environment.supportPath+"/customTimers.json";async function d(e,t="Untitled"){let s=(r.environment.supportPath+"/"+new Date().toISOString()+"---"+e+".timer").replace(/:/g,"__");(0,n.writeFileSync)(s,t);let i=(0,r.getPreferenceValues)(),u=`${r.environment.assetsPath+"/"+i.selectedSound}`,m=`sleep ${e} && if [ -f "${s}" ]; then `;if(i.selectedSound==="speak_timer_name"?m+=`say "${t}"`:m+=`afplay "${u}"`,i.ringContinuously){let a=`${s}`.replace(".timer",".dismiss");(0,n.writeFileSync)(a,".dismiss file for Timers"),m+=` && while [ -f "${a}" ]; do afplay "${u}"; done`}m+=` && osascript -e 'display notification "Timer \\"${t}\\" complete" with title "Ding!"' && rm "${s}"; else echo "Timer deleted"; fi`,(0,f.exec)(m,(a,l)=>{if(a){console.log(`error: ${a.message}`);return}if(l){console.log(`stderr: ${l}`);return}}),(0,r.popToRoot)(),await(0,r.showHUD)(`Timer "${t}" started for ${p(e)}! \u{1F389}`)}var D=async()=>{await(0,T.closeMainWindow)(),d(60*25,"25 Minute Timer")};0&&(module.exports={});
