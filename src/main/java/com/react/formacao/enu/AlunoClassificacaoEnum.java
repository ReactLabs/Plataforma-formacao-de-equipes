package com.react.formacao.enu;

public enum AlunoClassificacaoEnum {

    MELANCOLICO("MELANCOLICO", 1),
    INSTAVEL ("INSTAVEL" ,2),
    AMORFO ("AMORFO", 3),
    APATICO ("APATICO", 4),
    SOCIAL ("SOCIAL", 5),
    FLEUMATICO ("FLEUMATICO", 6),
    ATIVO ("ATIVO", 7),
    LIDER ("LIDER", 8);

    private String tipoSocail;
    private int codigo;


    AlunoClassificacaoEnum(String tipoSocail, int codigo) {
        this.tipoSocail = tipoSocail;
        this.codigo = codigo;

    }

    public static AlunoClassificacaoEnum getByCodigo(int codigo){

        if (codigo == 0)
            return null;
        for (AlunoClassificacaoEnum e : AlunoClassificacaoEnum.values()){
            if (e.codigo == codigo)
                return e;
        }
        return null;
    }

    public int getCodigo() {
        return codigo;
    }


    public String getTipoSocail() {
        return tipoSocail;
    }

    public void setTipoSocail(String tipoSocail) {
        this.tipoSocail = tipoSocail;
    }
}
