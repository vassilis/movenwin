

ready = ->

  $('#overall-pie').highcharts
    chart:
      plotBackgroundColor: null
      plotBorderWidth: null
      plotShadow: false
      type: 'pie'
      options3d:
        enabled: true
        alpha: 45
        beta: 0
    title:
      text: false
    tooltip:
      pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    plotOptions: pie:
      allowPointSelect: true
      cursor: 'pointer'
      depth: 35
      dataLabels: enabled: false
      showInLegend: true
    series: [ {
      name: 'Brands'
      colorByPoint: true
      data: [
        {
          name: 'Yes'
          y: 72.33
        }
        {
          name: 'No'
          y: 17.67
        }
      ]
    } ]
  $('#yes-pie').highcharts
    chart:
      plotBackgroundColor: null
      plotBorderWidth: null
      plotShadow: false
      type: 'pie'
      options3d:
        enabled: true
        alpha: 45
        beta: 0
    title:
      text: false
    tooltip:
      pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    plotOptions: pie:
      allowPointSelect: true
      cursor: 'pointer'
      depth: 35
      dataLabels: enabled: false
      showInLegend: true
    series: [ {
      name: 'Brands'
      colorByPoint: true
      data: [
        {
          name: 'Men'
          y: 60
        }
        {
          name: 'Women'
          y: 40
        }
      ]
    } ]
  $('#no-pie').highcharts
    chart:
      plotBackgroundColor: null
      plotBorderWidth: null
      plotShadow: false
      type: 'pie'
      options3d:
        enabled: true
        alpha: 45
        beta: 0
    title:
      text: false
    tooltip:
      pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    plotOptions: pie:
      allowPointSelect: true
      cursor: 'pointer'
      depth: 35
      dataLabels: enabled: false
      showInLegend: true
    series: [ {
      name: 'Brands'
      colorByPoint: true
      data: [
        {
          name: 'Men'
          y: 34
        }
        {
          name: 'Women'
          y: 66
        }
      ]
    } ]
  $('#yes-donut').highcharts
    chart:
      type: 'pie'
      options3d:
        enabled: true
        alpha: 45
    title:
      text: 'Answer Yes breakdown per age group'
    subtitle: text: '3D donut in Highcharts'
    plotOptions: pie:
      innerSize: 100
      depth: 45
    series: [ {
      name: 'Delivered amount'
      data: [
        [
          '18-25'
          8
        ]
        [
          '26-35'
          3
        ]
        [
          '36-50'
          1
        ]
        [
          '51-65'
          6
        ]
        [
          '66-80'
          8
        ]
      ]
    } ]
  $('#no-donut').highcharts
    chart:
      type: 'pie'
      options3d:
        enabled: true
        alpha: 45
    title:
      text: false
    plotOptions: pie:
      innerSize: 100
      depth: 45
    series: [ {
      name: 'Delivered amount'
      data: [
        [
          '18-25'
          7
        ]
        [
          '26-35'
          4
        ]
        [
          '36-50'
          5
        ]
        [
          '51-65'
          3
        ]
        [
          '66-80'
          6
        ]
      ]
    } ]
  return

$(document).ready(ready)
$(document).on('page:load', ready)
