(function (root, factory) {if (typeof define === 'function' && define.amd) {
        // AMD. Register as an anonymous module.
        define(['exports', 'echarts'], factory);
    } else if (typeof exports === 'object' && typeof exports.nodeName !== 'string') {
        // CommonJS
        factory(exports, require('echarts'));
    } else {
        // Browser globals
        factory({}, root.echarts);
    }
}(this, function (exports, echarts) {
    var log = function (msg) {
        if (typeof console !== 'undefined') {
            console && console.error && console.error(msg);
        }
    };
    if (!echarts) {
        log('ECharts is not Loaded');
        return;
    }

    var colorPalette = [
        '#c12e34','#e6b600','#0098d9','#2b821d',
        '#005eaa','#339ca8','#cda819','#32a487'
    ];
    var theme = {
        // 默认色板
        color: [
            '#1790cf','#1bb2d8','#99d2dd','#88b0bb',
            '#1c7099','#038cc4','#75abd0','#afd6dd'
        ],

        // 图表标题
        title: {
            textStyle: {
                fontWeight: 'normal',
                color: '#1790cf'
            }
        },

        // 值域
        dataRange: {
            color:['#1178ad','#72bbd0']
        },

        // 工具箱
        toolbox: {
            color : ['#1790cf','#1790cf','#1790cf','#1790cf']
        },

        // 提示框
        tooltip: {
            backgroundColor: 'rgba(0,0,0,0.5)',
            axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                type : 'line',         // 默认为直线，可选为：'line' | 'shadow'
                lineStyle : {          // 直线指示器样式设置
                    color: '#1790cf',
                    type: 'dashed'
                },
                crossStyle: {
                    color: '#1790cf'
                },
                shadowStyle : {                     // 阴影指示器样式设置
                    color: 'rgba(200,200,200,0.3)'
                }
            }
        },

        // 区域缩放控制器
        dataZoom: {
            dataBackgroundColor: '#eee',            // 数据背景颜色
            fillerColor: 'rgba(144,197,237,0.2)',   // 填充颜色
            handleColor: '#1790cf'     // 手柄颜色
        },

        // 网格
        grid: {
            borderWidth: 0
        },

        // 类目轴
        categoryAxis: {
            axisLine: {            // 坐标轴线
                lineStyle: {       // 属性lineStyle控制线条样式
                    color: '#1790cf'
                }
            },
            splitLine: {           // 分隔线
                lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                    color: ['#eee']
                }
            }
        },

        // 数值型坐标轴默认参数
        valueAxis: {
            axisLine: {            // 坐标轴线
                lineStyle: {       // 属性lineStyle控制线条样式
                    color: '#1790cf'
                }
            },
            splitArea : {
                show : true,
                areaStyle : {
                    color: ['rgba(250,250,250,0.1)','rgba(200,200,200,0.1)']
                }
            },
            splitLine: {           // 分隔线
                lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                    color: ['#eee']
                }
            }
        },

        timeline : {
            lineStyle : {
                color : '#1790cf'
            },
            controlStyle : {
                normal : { color : '#1790cf'},
                emphasis : { color : '#1790cf'}
            }
        },

        // K线图默认参数
        k: {
            itemStyle: {
                normal: {
                    color: '#1bb2d8',          // 阳线填充颜色
                    color0: '#99d2dd',      // 阴线填充颜色
                    lineStyle: {
                        width: 1,
                        color: '#1c7099',   // 阳线边框颜色
                        color0: '#88b0bb'   // 阴线边框颜色
                    }
                }
            }
        },

        map: {
            itemStyle: {
                normal: {
                    areaStyle: {
                        color: '#ddd'
                    },
                    label: {
                        textStyle: {
                            color: '#c12e34'
                        }
                    }
                },
                emphasis: {                 // 也是选中样式
                    areaStyle: {
                        color: '#99d2dd'
                    },
                    label: {
                        textStyle: {
                            color: '#c12e34'
                        }
                    }
                }
            }
        },

        force : {
            itemStyle: {
                normal: {
                    linkStyle : {
                        color : '#1790cf'
                    }
                }
            }
        },

        chord : {
            padding : 4,
            itemStyle : {
                normal : {
                    borderWidth: 1,
                    borderColor: 'rgba(128, 128, 128, 0.5)',
                    chordStyle : {
                        lineStyle : {
                            color : 'rgba(128, 128, 128, 0.5)'
                        }
                    }
                },
                emphasis : {
                    borderWidth: 1,
                    borderColor: 'rgba(128, 128, 128, 0.5)',
                    chordStyle : {
                        lineStyle : {
                            color : 'rgba(128, 128, 128, 0.5)'
                        }
                    }
                }
            }
        },

        gauge : {
            axisLine: {            // 坐标轴线
                show: true,        // 默认显示，属性show控制显示与否
                lineStyle: {       // 属性lineStyle控制线条样式
                    color: [[0.2, '#1bb2d8'],[0.8, '#1790cf'],[1, '#1c7099']],
                    width: 8
                }
            },
            axisTick: {            // 坐标轴小标记
                splitNumber: 10,   // 每份split细分多少段
                length :12,        // 属性length控制线长
                lineStyle: {       // 属性lineStyle控制线条样式
                    color: 'auto'
                }
            },
            axisLabel: {           // 坐标轴文本标签，详见axis.axisLabel
                textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                    color: 'auto'
                }
            },
            splitLine: {           // 分隔线
                length : 18,         // 属性length控制线长
                lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                    color: 'auto'
                }
            },
            pointer : {
                length : '90%',
                color : 'auto'
            },
            title : {
                textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                    color: '#333'
                }
            },
            detail : {
                textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                    color: 'auto'
                }
            }
        },

        textStyle: {
            fontFamily: '微软雅黑, Arial, Verdana, sans-serif'
        }
    };
//    var theme = {
//
//        color: colorPalette,
//
//        title: {
//            textStyle: {
//                fontWeight: 'normal'
//            }
//        },
//
//        visualMap: {
//            color:['#1790cf','#a2d4e6']
//        },
//
//        toolbox: {
//            iconStyle: {
//                normal: {
//                    borderColor: '#06467c'
//                }
//            }
//        },
//
//        tooltip: {
//            backgroundColor: 'rgba(0,0,0,0.6)'
//        },
//
//        dataZoom: {
//            dataBackgroundColor: '#dedede',
//            fillerColor: 'rgba(154,217,247,0.2)',
//            handleColor: '#005eaa'
//        },
//
//        timeline: {
//            lineStyle: {
//                color: '#005eaa'
//            },
//            controlStyle: {
//                normal: {
//                    color: '#005eaa',
//                    borderColor: '#005eaa'
//                }
//            }
//        },
//
//        candlestick: {
//            itemStyle: {
//                normal: {
//                    color: '#c12e34',
//                    color0: '#2b821d',
//                    lineStyle: {
//                        width: 1,
//                        color: '#c12e34',
//                        color0: '#2b821d'
//                    }
//                }
//            }
//        },
//
//        graph: {
//            color: colorPalette
//        },
//
//        map: {
//            label: {
//                normal: {
//                    textStyle: {
//                        color: '#c12e34'
//                    }
//                },
//                emphasis: {
//                    textStyle: {
//                        color: '#c12e34'
//                    }
//                }
//            },
//            itemStyle: {
//                normal: {
//                    borderColor: '#eee',
//                    areaColor: '#ddd'
//                },
//                emphasis: {
//                    areaColor: '#e6b600'
//                }
//            }
//        },
//
//        gauge: {
//            axisLine: {
//                show: true,
//                lineStyle: {
//                    color: [[0.2, '#2b821d'],[0.8, '#005eaa'],[1, '#c12e34']],
//                    width: 5
//                }
//            },
//            axisTick: {
//                splitNumber: 10,
//                length:8,
//                lineStyle: {
//                    color: 'auto'
//                }
//            },
//            axisLabel: {
//                textStyle: {
//                    color: 'auto'
//                }
//            },
//            splitLine: {
//                length: 12,
//                lineStyle: {
//                    color: 'auto'
//                }
//            },
//            pointer: {
//                length: '90%',
//                width: 3,
//                color: 'auto'
//            },
//            title: {
//                textStyle: {
//                    color: '#333'
//                }
//            },
//            detail: {
//                textStyle: {
//                    color: 'auto'
//                }
//            }
//        }
//    };
    echarts.registerTheme('shine', theme);
}));