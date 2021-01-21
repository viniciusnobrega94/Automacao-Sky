describe  "Teste SKY" do

    before(:each) do
        visit "https://www.sky.com.br/"
    end

    it 'Ver programação' do
        
    within('.modal-dialog') do
            find('.sky_icon-close').click
            end
        

    find('a[href="/programacao"]').click

    descricao = 'a'
    duracao = 'b'
    descricaoModal = 'c'
    duracaoModal = 'd'

    within('.program-schedule-item', match: :first) do
        descricao = find('.program-schedule-title').text
        duracao = find('.program-duration').text
        puts descricao
        puts duracao
        
    end
    
    find('.program-schedule-item', match: :first).click

    within('.sky-modal-program') do
        descricaoModal = find('.sky-modal-program-title').text
        duracaoModal = find('.sky-modal-program-date-time').text
        puts descricaoModal
        puts duracaoModal
        
    end
    
    expect(descricaoModal).to eql (descricao)
    expect(duracaoModal).to eql (duracao)
end
    
end

    
