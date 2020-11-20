const hoverMarkers = () => {
  const cards = document.querySelectorAll('.cards-otters-index')
  cards.forEach((card) => {
    card.addEventListener('mouseover', (event) => {
      const otterId = event.currentTarget.dataset.otterId
      const marker = document.querySelector("[data-otter-id-marker='" + parseInt(otterId) + "']")
      marker.style.width = '35px';
      marker.style.height = '35px';
    })
    card.addEventListener('mouseout', (event) => {
      const otterId = event.currentTarget.dataset.otterId
      const marker = document.querySelector("[data-otter-id-marker='" + parseInt(otterId) + "']")
      marker.style.width = '25px';
      marker.style.height = '25px';
    })
  })

};

export { hoverMarkers };
