describe('World Clock app', () => {
  it('shows UTC and Tokyo clocks', () => {
    cy.visit('/');
    cy.get('#clock-UTC .time').should('match', /\d{2}:\d{2}:\d{2}/);
    cy.get('#clock-Tokyo .time').should('match', /\d{2}:\d{2}:\d{2}/);
  });
});
